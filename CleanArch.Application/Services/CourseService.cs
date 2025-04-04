﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AutoMapper;
using AutoMapper.QueryableExtensions;
using CleanArch.Application.Interfaces;
using CleanArch.Application.ViewModels;
using CleanArch.Domain.Commands;
using CleanArch.Domain.Core.Bus;
using CleanArch.Domain.Interfaces;

namespace CleanArch.Application.Services
{
    public class CourseService : ICourseService
    {
        private readonly ICourseRepository _courseRepository;
        private readonly IMediatorHandler _bus;
        private readonly IMapper _autoMapper;

        public CourseService(ICourseRepository courseRepository, IMediatorHandler bus, IMapper autoMapper)
        {
            _courseRepository = courseRepository;
            _bus = bus;
            _autoMapper = autoMapper;
        }

        public IEnumerable<CourseViewModel> GetCourses()
        {
            //return new CourseViewModel
            //{
            //    Courses = _courseRepository.GetCourses()
            //};            
            return _courseRepository.GetCourses().ProjectTo<CourseViewModel>(_autoMapper.ConfigurationProvider);
        }

        public void Create(CourseViewModel courseViewModel)
        {
            //var createCourseCommand = new CreateCourseCommand(
            //    courseViewModel.Name!, 
            //    courseViewModel.Description!, 
            //    courseViewModel.ImageUrl!
            //);

            //_bus.SendCommand(createCourseCommand);

            _bus.SendCommand(_autoMapper.Map<CreateCourseCommand>(courseViewModel));
        }
    }
}
